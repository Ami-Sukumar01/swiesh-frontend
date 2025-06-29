import withPWAInit from "@ducanh2912/next-pwa";

const withPWA = withPWAInit({
  dest: "public",
  disable: process.env.NODE_ENV === "development", // disable PWA in dev
});

export default withPWA({
  reactStrictMode: true,
});
