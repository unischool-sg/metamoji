.class public final enum Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;
.super Ljava/lang/Enum;
.source "StoreServerSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

.field public static final enum FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

.field public static final enum FOR_EDITIT_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

.field public static final enum FOR_LOBBY_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

.field public static final enum FOR_STORE_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;
    .locals 4

    .line 39
    sget-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_STORE_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_LOBBY_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v3, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_EDITIT_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    const-string v1, "FOR_DC_SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    .line 41
    new-instance v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    const-string v1, "FOR_STORE_SERVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_STORE_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    .line 42
    new-instance v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    const-string v1, "FOR_LOBBY_SERVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_LOBBY_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    .line 43
    new-instance v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    const-string v1, "FOR_EDITIT_SERVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_EDITIT_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    .line 39
    invoke-static {}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->$values()[Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->$VALUES:[Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    const-class v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;
    .locals 1

    .line 39
    sget-object v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->$VALUES:[Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    return-object v0
.end method
