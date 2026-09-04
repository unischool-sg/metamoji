.class Lcom/metamoji/ui/dialog/PenSettings2$25$1;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/PenSettings2$25;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2$25;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 884
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$25$1;->this$1:Lcom/metamoji/ui/dialog/PenSettings2$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$25$1;->this$1:Lcom/metamoji/ui/dialog/PenSettings2$25;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2$25;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$25$1;->this$1:Lcom/metamoji/ui/dialog/PenSettings2$25;

    iget v1, v1, Lcom/metamoji/ui/dialog/PenSettings2$25;->val$y:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
