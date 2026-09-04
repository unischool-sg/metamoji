.class Lcom/metamoji/ui/cabinet/ShareViewActivity$10;
.super Ljava/lang/Object;
.source "ShareViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewActivity;->_returnToMainActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
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

    .line 384
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->finish()V

    return-void
.end method
