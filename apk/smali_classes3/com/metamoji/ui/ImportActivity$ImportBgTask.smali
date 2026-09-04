.class Lcom/metamoji/ui/ImportActivity$ImportBgTask;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportBgTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/ImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1219
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$ImportBgTask;->this$0:Lcom/metamoji/ui/ImportActivity;

    const/4 p1, 0x0

    .line 1220
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 0

    return-void
.end method
