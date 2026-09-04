.class public final enum Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;
.super Ljava/lang/Enum;
.source "LbConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/LbConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorePageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum INDEX_DATA_COMPLETED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum INDEX_DATA_REQUESTING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum INDEX_REQUEST_FAILED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum PAGE_DATA_COMPLETED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum PAGE_DATA_NOTHING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum PAGE_DATA_REQUESTING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum PAGE_REQUEST_FAILED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum SERVER_MAINTENANCE:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

.field public static final enum SERVER_MAINTENANCE_CHECKING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;
    .locals 9

    .line 85
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->SERVER_MAINTENANCE_CHECKING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v1, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->INDEX_DATA_REQUESTING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v2, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_DATA_REQUESTING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v3, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_DATA_COMPLETED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v4, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_DATA_NOTHING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v5, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->INDEX_REQUEST_FAILED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v6, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_REQUEST_FAILED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v7, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->SERVER_MAINTENANCE:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    sget-object v8, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->INDEX_DATA_COMPLETED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "SERVER_MAINTENANCE_CHECKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->SERVER_MAINTENANCE_CHECKING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 87
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "INDEX_DATA_REQUESTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->INDEX_DATA_REQUESTING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 88
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "PAGE_DATA_REQUESTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_DATA_REQUESTING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 89
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "PAGE_DATA_COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_DATA_COMPLETED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 90
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "PAGE_DATA_NOTHING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_DATA_NOTHING:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 91
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "INDEX_REQUEST_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->INDEX_REQUEST_FAILED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 92
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "PAGE_REQUEST_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->PAGE_REQUEST_FAILED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 93
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "SERVER_MAINTENANCE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->SERVER_MAINTENANCE:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 94
    new-instance v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    const-string v1, "INDEX_DATA_COMPLETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->INDEX_DATA_COMPLETED:Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    .line 85
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->$values()[Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->$VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 85
    const-class v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;
    .locals 1

    .line 85
    sget-object v0, Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->$VALUES:[Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/purchase/LbConstants$StorePageStatus;

    return-object v0
.end method
