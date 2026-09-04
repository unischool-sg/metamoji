.class Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;
.super Lcom/metamoji/mazec/MazecEventAdapter;
.source "CnvCandidatesBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesBar;
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

    .line 78
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-direct {p0}, Lcom/metamoji/mazec/MazecEventAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    return-void
.end method

.method public onConvertResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/converter/ConvertResult;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result p1

    invoke-static {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->getCandidateTypes(Z)[I

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;[I)V

    return-void
.end method
