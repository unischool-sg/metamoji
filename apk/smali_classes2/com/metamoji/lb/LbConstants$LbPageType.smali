.class public final enum Lcom/metamoji/lb/LbConstants$LbPageType;
.super Ljava/lang/Enum;
.source "LbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lb/LbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LbPageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lb/LbConstants$LbPageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_EXTENSION:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_SHARE:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_UNKNOWN:Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

.field private static final MAP:[Lcom/metamoji/lb/LbConstants$LbPageType;

.field public static final enum lbPageType_OPERATION:Lcom/metamoji/lb/LbConstants$LbPageType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 11

    .line 55
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v4, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v5, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v6, Lcom/metamoji/lb/LbConstants$LbPageType;->lbPageType_OPERATION:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v7, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SHARE:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v8, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v9, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v10, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/lb/LbConstants$LbPageType;

    filled-new-array/range {v0 .. v10}, [Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_HISTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 57
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_BOOKMARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 58
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_USER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 59
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_SYSTEM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 60
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_DOWNLOAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 61
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_STORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 62
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "lbPageType_OPERATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->lbPageType_OPERATION:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 63
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_SHARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SHARE:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 64
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_MAX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 65
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_EXTENSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 66
    new-instance v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string v1, "LbPageType_UNKNOWN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lb/LbConstants$LbPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 55
    invoke-static {}, Lcom/metamoji/lb/LbConstants$LbPageType;->$values()[Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->$VALUES:[Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 72
    invoke-static {}, Lcom/metamoji/lb/LbConstants$LbPageType;->values()[Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->MAP:[Lcom/metamoji/lb/LbConstants$LbPageType;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 2

    if-ltz p0, :cond_1

    .line 75
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->MAP:[Lcom/metamoji/lb/LbConstants$LbPageType;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    const-class v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1

    .line 55
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->$VALUES:[Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v0}, [Lcom/metamoji/lb/LbConstants$LbPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v0

    return v0
.end method
