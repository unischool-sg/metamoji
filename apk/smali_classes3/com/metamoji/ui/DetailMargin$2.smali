.class Lcom/metamoji/ui/DetailMargin$2;
.super Ljava/lang/Object;
.source "DetailMargin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailMargin;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailMargin;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailMargin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/metamoji/ui/DetailMargin$2;->this$0:Lcom/metamoji/ui/DetailMargin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/metamoji/ui/DetailMargin$2;->this$0:Lcom/metamoji/ui/DetailMargin;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    .line 136
    iget-object v0, p0, Lcom/metamoji/ui/DetailMargin$2;->this$0:Lcom/metamoji/ui/DetailMargin;

    invoke-static {v0}, Lcom/metamoji/ui/DetailMargin;->-$$Nest$mupdateHandlePosition(Lcom/metamoji/ui/DetailMargin;)V

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/DetailMargin$2;->this$0:Lcom/metamoji/ui/DetailMargin;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailMargin;->setAlpha(F)V

    return-void
.end method
