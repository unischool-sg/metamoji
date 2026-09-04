.class Lcom/metamoji/mazec/ui/CnvCandidatesBar$2;
.super Ljava/lang/Object;
.source "CnvCandidatesBar.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesBar;->init(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$2;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayouting(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;IIII)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$2;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->-$$Nest$fgetmCandsPanel(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->layoutCandidates()V

    return-void
.end method
