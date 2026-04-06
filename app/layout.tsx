import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "배송원 지원서 | 옹고잉",
  description: "B마트 배달 업무 배송원 지원 페이지",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="ko">
      <body>{children}</body>
    </html>
  );
}
