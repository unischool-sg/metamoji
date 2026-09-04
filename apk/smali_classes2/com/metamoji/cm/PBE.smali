.class public Lcom/metamoji/cm/PBE;
.super Ljava/lang/Object;
.source "PBE.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/PBE$ExpandableBuffer;,
        Lcom/metamoji/cm/PBE$PBEInputStream;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/cm/PBE;",
            ">;"
        }
    .end annotation
.end field

.field private static final _secret_seed_for_pbe:[B


# instance fields
.field private _hashed_pwd:[B

.field private _iv:[B


# direct methods
.method static bridge synthetic -$$Nest$minitEngine(Lcom/metamoji/cm/PBE;Z)Ljavax/crypto/Cipher;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/cm/PBE;->initEngine(Z)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    .line 31
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/cm/PBE;->_secret_seed_for_pbe:[B

    .line 285
    new-instance v0, Lcom/metamoji/cm/PBE$1;

    invoke-direct {v0}, Lcom/metamoji/cm/PBE$1;-><init>()V

    sput-object v0, Lcom/metamoji/cm/PBE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 1
        0x11t
        -0x74t
        0x4et
        -0x44t
        0x6at
        0x4et
        -0x55t
        -0xct
        0x6dt
        0x7et
        0x52t
        -0x6ft
        -0x52t
        0x2bt
        0xft
        -0x7ct
        -0x17t
        -0x8t
        0x47t
        -0x3bt
        -0x55t
        0x63t
        0x2bt
        -0x7et
        0x34t
        -0x62t
        0x1ct
        0x69t
        0xct
        -0x6at
        0x42t
        -0x16t
        -0xft
        0x65t
        0x7ct
        -0x38t
        -0x6ct
        -0x12t
        0xbt
        -0x34t
        -0x24t
        -0x13t
        -0x7et
        -0x66t
        -0x74t
        0x3at
        0xbt
        0x2et
        -0x6ct
        0x41t
        -0x7bt
        -0x47t
        -0x5bt
        -0x49t
        0x1t
        0x14t
        -0x6ct
        0x22t
        -0x5dt
        0x4bt
        -0x16t
        0x5dt
        0x3ft
        -0x4t
        0xct
        0x37t
        -0xft
        -0x4ct
        0x32t
        0x4ct
        -0x3t
        -0x1ft
        -0x63t
        -0x70t
        -0x5ft
        0x33t
        0x24t
        0x70t
        -0x80t
        0x78t
        -0x1ct
        -0x76t
        -0xdt
        0x4ft
        -0x1ft
        0x79t
        0x8t
        0x2at
        -0x72t
        0x7t
        0x74t
        -0x3dt
        -0x52t
        -0x79t
        -0x4t
        0x5ft
        0x4bt
        -0x20t
        -0x80t
        0x65t
        -0x5dt
        0x4at
        0xft
        -0x15t
        -0x5et
        0x32t
        0x5t
        -0x25t
        -0x5et
        -0x2bt
        -0x4ft
        -0x5bt
        0x33t
        0x7dt
        0x77t
        -0x58t
        0x55t
        -0x24t
        -0x7at
        0x18t
        -0x76t
        0x43t
        0x19t
        0x6t
        0x30t
        -0xct
        -0xet
        0x68t
        0x26t
        0x4t
        0x0t
        -0x73t
        -0x1ft
        0x26t
        0x3at
        0x40t
        0xct
        0x4at
        -0x75t
        -0x18t
        -0x7bt
        0x6t
        -0x4ft
        -0x4et
        -0x26t
        -0x53t
        -0x12t
        -0x11t
        0x3at
        -0x14t
        0x71t
        -0x2at
        0x70t
        0x1et
        -0x47t
        0x7ft
        -0xft
        0x59t
        0x2bt
        -0x7et
        -0x14t
        0xdt
        -0x1t
        -0x28t
        -0x33t
        0x6at
        0x38t
        -0x14t
        -0x1dt
        0x2ct
        0x15t
        0x13t
        0x1dt
        -0x6ft
        -0x75t
        -0x19t
        0x2at
        0x70t
        0x3ft
        -0x54t
        0x7at
        0xft
        -0x50t
        -0x4ft
        -0x48t
        0x2ft
        -0x24t
        0x1bt
        0x34t
        0x7bt
        -0x35t
        -0x67t
        0x39t
        0x3ft
        0x4ct
        0x37t
        -0x29t
        0x26t
        -0x49t
        -0x14t
        0x9t
        0x56t
        0x39t
        -0x63t
        -0x34t
        -0x57t
        0x61t
        0x49t
        0x69t
        0x44t
        0x53t
        -0x73t
        0x34t
        0x4ct
        -0x37t
        -0x28t
        0x7at
        0x46t
        0x74t
        -0x64t
        0x23t
        0xat
        0x7ft
        0x3ft
        0x5dt
        0x39t
        -0x6t
        -0x61t
        0xbt
        0x50t
        -0x34t
        -0x36t
        0x12t
        -0x5bt
        0x72t
        -0x6dt
        -0x6dt
        -0x39t
        -0x16t
        -0x7at
        -0x23t
        0x48t
        0x8t
        0x5bt
        0x21t
        -0x6bt
        -0x14t
        0x44t
        -0x3at
        -0x2at
        -0x35t
        -0x4t
        -0x62t
        0x32t
        0x3at
        -0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    .line 30
    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    .line 30
    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/cm/PBE-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/cm/PBE;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    .line 30
    iput-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    .line 62
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/PBE;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method private doCrypt(Ljavax/crypto/Cipher;Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1000

    .line 228
    :try_start_0
    new-array v2, v1, [B

    .line 230
    new-instance v3, Lcom/metamoji/cm/PBE$ExpandableBuffer;

    invoke-direct {v3, p0, v1}, Lcom/metamoji/cm/PBE$ExpandableBuffer;-><init>(Lcom/metamoji/cm/PBE;I)V

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 235
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/PBE$ExpandableBuffer;->getBuffer(I)[B

    move-result-object v5

    .line 236
    invoke-virtual {p1, v2, v0, v4, v5}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v4

    if-lez v4, :cond_1

    .line 238
    invoke-virtual {p3, v5, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/metamoji/cm/PBE$ExpandableBuffer;->getBuffer(I)[B

    move-result-object p2

    .line 242
    invoke-virtual {p1, p2, v0}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result p1

    .line 243
    invoke-virtual {p3, p2, v0, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private doCrypt(Ljavax/crypto/Cipher;[B)[B
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private initEngine(Z)Ljavax/crypto/Cipher;
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 134
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    const/16 v3, 0x10

    const-string v4, "AES"

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 135
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 138
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 139
    :goto_0
    invoke-virtual {v3, p1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public checkPassword([B)Z
    .locals 1

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/PBE;->decrypt([B)[B

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 70
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 71
    iget-object v3, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_0
    iput-object v2, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    if-eqz v0, :cond_3

    .line 78
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 79
    iget-object v3, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 81
    :cond_2
    iput-object v2, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    :cond_3
    return-void
.end method

.method public decrypt([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/metamoji/cm/PBE;->initEngine(Z)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/PBE;->doCrypt(Ljavax/crypto/Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public decryptStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, v0}, Lcom/metamoji/cm/PBE;->initEngine(Z)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/metamoji/cm/PBE;->doCrypt(Ljavax/crypto/Cipher;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public decryptString([B)Ljava/lang/String;
    .locals 2

    .line 189
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/PBE;->decrypt([B)[B

    move-result-object p1

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encrypt([B)[B
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, v0}, Lcom/metamoji/cm/PBE;->initEngine(Z)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/PBE;->doCrypt(Ljavax/crypto/Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encryptStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 1

    const/4 v0, 0x1

    .line 255
    invoke-direct {p0, v0}, Lcom/metamoji/cm/PBE;->initEngine(Z)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/metamoji/cm/PBE;->doCrypt(Ljavax/crypto/Cipher;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public encryptString(Ljava/lang/String;)[B
    .locals 1

    .line 179
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/PBE;->encrypt([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEncryptedPassword()[B
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/PBE;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 4

    .line 89
    const-string v0, "MD5"

    invoke-virtual {p0}, Lcom/metamoji/cm/PBE;->clear()V

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/metamoji/cm/PBE;->_secret_seed_for_pbe:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 95
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    .line 99
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/PBE;->_iv:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 104
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PBE;->clear()V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 281
    iget-object p2, p0, Lcom/metamoji/cm/PBE;->_iv:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 282
    iget-object p2, p0, Lcom/metamoji/cm/PBE;->_hashed_pwd:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
