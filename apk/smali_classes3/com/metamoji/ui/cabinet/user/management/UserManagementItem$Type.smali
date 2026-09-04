.class public final enum Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;
.super Ljava/lang/Enum;
.source "UserManagementItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

.field public static final enum ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

.field public static final enum GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

.field public static final enum TITLE:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

.field public static final enum UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;
    .locals 4

    .line 14
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->TITLE:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v3, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    const-string v1, "ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    const-string v1, "GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    const-string v1, "TITLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->TITLE:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->$values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->$VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    const-class v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;
    .locals 1

    .line 14
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->$VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    return-object v0
.end method
