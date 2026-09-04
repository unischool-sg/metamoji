.class Lcom/metamoji/ui/cabinet/ShareViewActivity$3;
.super Ljava/lang/Object;
.source "ShareViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_shareViewFragment(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/cabinet/ShareViewFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_shareViewFragment(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/cabinet/ShareViewFragment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Z)V

    :cond_0
    return-void
.end method
