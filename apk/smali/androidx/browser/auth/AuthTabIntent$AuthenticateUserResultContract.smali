.class Landroidx/browser/auth/AuthTabIntent$AuthenticateUserResultContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "AuthTabIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticateUserResultContract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Landroid/content/Intent;",
        "Landroidx/browser/auth/AuthTabIntent$AuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p2
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
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

    .line 493
    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroidx/browser/auth/AuthTabIntent$AuthenticateUserResultContract;->createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Landroidx/browser/auth/AuthTabIntent$AuthResult;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    move-object v1, p2

    .line 513
    :cond_1
    :goto_0
    new-instance p2, Landroidx/browser/auth/AuthTabIntent$AuthResult;

    invoke-direct {p2, p1, v1}, Landroidx/browser/auth/AuthTabIntent$AuthResult;-><init>(ILandroid/net/Uri;)V

    return-object p2
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
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

    .line 493
    invoke-virtual {p0, p1, p2}, Landroidx/browser/auth/AuthTabIntent$AuthenticateUserResultContract;->parseResult(ILandroid/content/Intent;)Landroidx/browser/auth/AuthTabIntent$AuthResult;

    move-result-object p1

    return-object p1
.end method
