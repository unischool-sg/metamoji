.class public final enum Lcom/metamoji/dm/DmEntitySyncType;
.super Ljava/lang/Enum;
.source "DmEntitySyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dm/DmEntitySyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dm/DmEntitySyncType;

.field public static final enum Delete:Lcom/metamoji/dm/DmEntitySyncType;

.field public static final enum New:Lcom/metamoji/dm/DmEntitySyncType;

.field public static final enum Synced:Lcom/metamoji/dm/DmEntitySyncType;

.field public static final enum Update:Lcom/metamoji/dm/DmEntitySyncType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dm/DmEntitySyncType;
    .locals 4

    .line 10
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    sget-object v3, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/dm/DmEntitySyncType;

    const-string v1, "Synced"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmEntitySyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    .line 13
    new-instance v0, Lcom/metamoji/dm/DmEntitySyncType;

    const-string v1, "New"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmEntitySyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    .line 14
    new-instance v0, Lcom/metamoji/dm/DmEntitySyncType;

    const-string v1, "Update"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmEntitySyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    .line 15
    new-instance v0, Lcom/metamoji/dm/DmEntitySyncType;

    const-string v1, "Delete"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dm/DmEntitySyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    .line 10
    invoke-static {}, Lcom/metamoji/dm/DmEntitySyncType;->$values()[Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dm/DmEntitySyncType;->$VALUES:[Lcom/metamoji/dm/DmEntitySyncType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dm/DmEntitySyncType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcom/metamoji/dm/DmEntitySyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dm/DmEntitySyncType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dm/DmEntitySyncType;
    .locals 1

    .line 10
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->$VALUES:[Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0}, [Lcom/metamoji/dm/DmEntitySyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dm/DmEntitySyncType;

    return-object v0
.end method
