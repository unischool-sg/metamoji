.class public final enum Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;
.super Ljava/lang/Enum;
.source "UserManagementDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

.field public static final enum INVITE_DRIVE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

.field public static final enum SHARE_NOTE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;
    .locals 2

    .line 51
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->SHARE_NOTE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->INVITE_DRIVE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    filled-new-array {v0, v1}, [Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    const-string v1, "SHARE_NOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->SHARE_NOTE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    .line 53
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    const-string v1, "INVITE_DRIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->INVITE_DRIVE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    .line 51
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->$values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->$VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    const-class v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;
    .locals 1

    .line 51
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->$VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    return-object v0
.end method
