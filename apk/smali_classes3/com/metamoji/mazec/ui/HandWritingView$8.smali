.class Lcom/metamoji/mazec/ui/HandWritingView$8;
.super Ljava/lang/Object;
.source "HandWritingView.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$8;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;Z)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$8;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$monClickSelector(Lcom/metamoji/mazec/ui/HandWritingView;ILjava/lang/String;Z)V

    return-void
.end method
