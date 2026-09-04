.class public final enum Lcom/metamoji/cm/HashGenerator$Algorithm;
.super Ljava/lang/Enum;
.source "HashGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/HashGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cm/HashGenerator$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cm/HashGenerator$Algorithm;

.field public static final enum MD5:Lcom/metamoji/cm/HashGenerator$Algorithm;

.field public static final enum SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

.field public static final enum SHA256:Lcom/metamoji/cm/HashGenerator$Algorithm;

.field public static final enum SHA384:Lcom/metamoji/cm/HashGenerator$Algorithm;

.field public static final enum SHA512:Lcom/metamoji/cm/HashGenerator$Algorithm;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cm/HashGenerator$Algorithm;
    .locals 5

    .line 40
    sget-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->MD5:Lcom/metamoji/cm/HashGenerator$Algorithm;

    sget-object v1, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

    sget-object v2, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA256:Lcom/metamoji/cm/HashGenerator$Algorithm;

    sget-object v3, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA384:Lcom/metamoji/cm/HashGenerator$Algorithm;

    sget-object v4, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA512:Lcom/metamoji/cm/HashGenerator$Algorithm;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/cm/HashGenerator$Algorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    const-string v1, "MD5"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/HashGenerator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->MD5:Lcom/metamoji/cm/HashGenerator$Algorithm;

    .line 43
    new-instance v0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    const-string v1, "SHA1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/HashGenerator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

    .line 44
    new-instance v0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    const-string v1, "SHA256"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/HashGenerator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA256:Lcom/metamoji/cm/HashGenerator$Algorithm;

    .line 45
    new-instance v0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    const-string v1, "SHA384"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/HashGenerator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA384:Lcom/metamoji/cm/HashGenerator$Algorithm;

    .line 46
    new-instance v0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    const-string v1, "SHA512"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/HashGenerator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA512:Lcom/metamoji/cm/HashGenerator$Algorithm;

    .line 40
    invoke-static {}, Lcom/metamoji/cm/HashGenerator$Algorithm;->$values()[Lcom/metamoji/cm/HashGenerator$Algorithm;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->$VALUES:[Lcom/metamoji/cm/HashGenerator$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cm/HashGenerator$Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    const-class v0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cm/HashGenerator$Algorithm;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cm/HashGenerator$Algorithm;
    .locals 1

    .line 40
    sget-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->$VALUES:[Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-virtual {v0}, [Lcom/metamoji/cm/HashGenerator$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cm/HashGenerator$Algorithm;

    return-object v0
.end method
