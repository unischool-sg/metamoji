.class public final Lcom/metamoji/ui/cabinet/user/LoginPageActivity;
.super Ljava/lang/Object;
.source "CompatLoginPage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageActivity;",
        "",
        "<init>",
        "()V",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

.field private static final Key_isNeedStartup:Ljava/lang/String; = "isNeedStartup"

.field private static final USE_OLD_LOGIN_PAGE:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAlreadyLoggedIn()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->isAlreadyLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static final logoutWithClearPasscode(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->logoutWithClearPasscode(Z)V

    return-void
.end method

.method public static final showLoginPage()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->showLoginPage()V

    return-void
.end method

.method public static final showLoginPageWithoutLogout()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->showLoginPageWithoutLogout()V

    return-void
.end method

.method public static final startLoginActivity(Landroid/app/Activity;ZLandroid/content/Intent;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->startLoginActivity(Landroid/app/Activity;ZLandroid/content/Intent;)V

    return-void
.end method
