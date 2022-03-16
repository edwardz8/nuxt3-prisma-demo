import { isMethod } from 'h3'
import Prisma from '@prisma/client'
const prisma = new Prisma.PrismaClient()

export default async function pitchers(req: any, res: any) {
    const url = /^\/(?<id>\d+)?$/.exec(req.url);

    const pitcherId = url?.groups?.id ? parseInt(url.groups.id) : undefined;

    if (pitcherId == undefined) {
        if (isMethod(req, 'GET')) {
            const pitchers = await prisma.pitcher.findMany()
            return pitchers
        }
    } else {
        const pitcher = await prisma.pitcher.findUnique({
            where: Object.assign({ id: pitcherId })
        })

        if (isMethod(req, 'GET')) {
            return pitcher
        }
    }
}