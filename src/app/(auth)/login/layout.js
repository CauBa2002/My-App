import { getServerSession } from 'next-auth'
import { authOptions } from '../../../lib/auth'
import React from 'react'
import { redirect } from 'next/navigation'

const Layout = async ({ children }) => {
  const session = await getServerSession(authOptions)

  if (session?.user) {
    redirect('/')
  }

  return <>{children}</>
}

export default Layout
