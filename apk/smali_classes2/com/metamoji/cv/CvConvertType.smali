.class public final enum Lcom/metamoji/cv/CvConvertType;
.super Ljava/lang/Enum;
.source "CvConvertType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cv/CvConvertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cv/CvConvertType;

.field public static final enum Incoming:Lcom/metamoji/cv/CvConvertType;

.field public static final enum Outgoing:Lcom/metamoji/cv/CvConvertType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cv/CvConvertType;
    .locals 2

    .line 11
    sget-object v0, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    filled-new-array {v0, v1}, [Lcom/metamoji/cv/CvConvertType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/cv/CvConvertType;

    const-string v1, "Outgoing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    .line 13
    new-instance v0, Lcom/metamoji/cv/CvConvertType;

    const-string v1, "Incoming"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    .line 11
    invoke-static {}, Lcom/metamoji/cv/CvConvertType;->$values()[Lcom/metamoji/cv/CvConvertType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cv/CvConvertType;->$VALUES:[Lcom/metamoji/cv/CvConvertType;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cv/CvConvertType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/metamoji/cv/CvConvertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cv/CvConvertType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cv/CvConvertType;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/cv/CvConvertType;->$VALUES:[Lcom/metamoji/cv/CvConvertType;

    invoke-virtual {v0}, [Lcom/metamoji/cv/CvConvertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cv/CvConvertType;

    return-object v0
.end method
