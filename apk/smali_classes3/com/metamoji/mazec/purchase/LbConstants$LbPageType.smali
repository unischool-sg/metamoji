.class public final enum Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;
.super Ljava/lang/Enum;
.source "LbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/LbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LbPageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_BOOKMARK:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_DOWNLOAD:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_EXTENSION:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_HISTORY:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_MAX:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_STORE:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_SYSTEM:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_UNKNOWN:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field public static final enum LbPageType_USER:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

.field private static final MAP:[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;
    .locals 9

    .line 56
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v1, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v2, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v3, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v4, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v5, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v6, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v7, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    sget-object v8, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_HISTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 58
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_BOOKMARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 59
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_USER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 60
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_SYSTEM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 61
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_DOWNLOAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 62
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_STORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 63
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_MAX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 64
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_EXTENSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 65
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    const-string v1, "LbPageType_UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 56
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->$values()[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->$VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    .line 71
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->values()[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->MAP:[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;
    .locals 2

    if-ltz p0, :cond_1

    .line 74
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->MAP:[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 75
    :cond_1
    :goto_0
    sget-object p0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 56
    const-class v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;
    .locals 1

    .line 56
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->$VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/LbConstants$LbPageType;->ordinal()I

    move-result v0

    return v0
.end method
