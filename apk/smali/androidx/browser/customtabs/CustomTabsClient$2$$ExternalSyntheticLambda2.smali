.class public final synthetic Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/browser/auth/AuthTabCallback;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/auth/AuthTabCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;->f$0:Landroidx/browser/auth/AuthTabCallback;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;->f$0:Landroidx/browser/auth/AuthTabCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient$2;->lambda$onWarmupCompleted$2(Landroidx/browser/auth/AuthTabCallback;Landroid/os/Bundle;)V

    return-void
.end method
