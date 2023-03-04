function [Volume, Luas_Permukaan] = hitung_prisma_123210190(Segitiga_Alas, Segitiga_Tinggi, Tinggi_Prisma)
Sisi_miring = sqrt(Segitiga_Alas^2 + Segitiga_Tinggi^2);
Volume = Segitiga_Alas*Segitiga_Tinggi / 2 * Tinggi_Prisma;
Luas_Permukaan = (2*Segitiga_Alas * Segitiga_Tinggi / 2) + ((Segitiga_Alas + Segitiga_Tinggi + Sisi_miring) + Tinggi_Prisma);