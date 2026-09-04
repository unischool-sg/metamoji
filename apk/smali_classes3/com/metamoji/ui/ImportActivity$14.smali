.class Lcom/metamoji/ui/ImportActivity$14;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->importVideo(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1201
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$14;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1204
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$14;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "showCancelButton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1205
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$14;->this$0:Lcom/metamoji/ui/ImportActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
