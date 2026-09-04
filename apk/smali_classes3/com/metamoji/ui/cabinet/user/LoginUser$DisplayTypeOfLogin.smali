.class public final enum Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;
.super Ljava/lang/Enum;
.source "LoginUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/LoginUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayTypeOfLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

.field public static final enum INTERIM_REGISTRATION:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

.field public static final enum NONE_SIGNUP:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

.field public static final enum REGISTRATION:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;
    .locals 3

    .line 56
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->NONE_SIGNUP:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->INTERIM_REGISTRATION:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->REGISTRATION:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    const-string v1, "NONE_SIGNUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->NONE_SIGNUP:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    .line 58
    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    const-string v1, "INTERIM_REGISTRATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->INTERIM_REGISTRATION:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    .line 59
    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    const-string v1, "REGISTRATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->REGISTRATION:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    .line 56
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->$values()[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->$VALUES:[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;
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
    const-class v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;
    .locals 1

    .line 56
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->$VALUES:[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    return-object v0
.end method
