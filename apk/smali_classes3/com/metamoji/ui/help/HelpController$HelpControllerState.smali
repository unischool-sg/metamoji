.class final enum Lcom/metamoji/ui/help/HelpController$HelpControllerState;
.super Ljava/lang/Enum;
.source "HelpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/help/HelpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HelpControllerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/help/HelpController$HelpControllerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field public static final enum MMJFX_ENUM_HC_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field public static final enum MMJFX_ENUM_HC_NON:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field public static final enum MMJFX_ENUM_HC_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field public static final enum MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field public static final enum MMJFX_ENUM_HC_WHILE_ITEM_UPDATE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field public static final enum MMJFX_ENUM_HC_WHILE_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/help/HelpController$HelpControllerState;
    .locals 6

    .line 52
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_NON:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v2, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v3, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_ITEM_UPDATE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v4, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v5, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    const-string v1, "MMJFX_ENUM_HC_NON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_NON:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    new-instance v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    const-string v1, "MMJFX_ENUM_HC_WHILE_HIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    new-instance v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    const-string v1, "MMJFX_ENUM_HC_HIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    new-instance v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    const-string v1, "MMJFX_ENUM_HC_WHILE_ITEM_UPDATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_ITEM_UPDATE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    new-instance v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    const-string v1, "MMJFX_ENUM_HC_WHILE_SHOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    new-instance v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    const-string v1, "MMJFX_ENUM_HC_SHOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 52
    invoke-static {}, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->$values()[Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->$VALUES:[Lcom/metamoji/ui/help/HelpController$HelpControllerState;

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

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/help/HelpController$HelpControllerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 52
    const-class v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/help/HelpController$HelpControllerState;
    .locals 1

    .line 52
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->$VALUES:[Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    invoke-virtual {v0}, [Lcom/metamoji/ui/help/HelpController$HelpControllerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    return-object v0
.end method
