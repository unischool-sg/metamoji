.class public final enum Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;
.super Ljava/lang/Enum;
.source "UserManagementItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TitleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

.field public static final enum GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

.field public static final enum MANAGER:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

.field public static final enum UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;
    .locals 3

    .line 15
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->MANAGER:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    const-string v1, "MANAGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->MANAGER:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    const-string v1, "GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->UNKNOWN:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->$values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->$VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    const-class v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->$VALUES:[Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    return-object v0
.end method
