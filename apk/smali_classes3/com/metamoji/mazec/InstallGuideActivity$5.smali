.class Lcom/metamoji/mazec/InstallGuideActivity$5;
.super Ljava/lang/Object;
.source "InstallGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/InstallGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/InstallGuideActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/InstallGuideActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity$5;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 212
    new-instance p1, Landroid/content/Intent;

    const-string v0, "http://www.twitter.com/androidmazecj/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity$5;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
