.class Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;
.super Ljava/lang/Object;
.source "UnWebUnitContainerExtender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;

    iget-object p1, p1, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$context:Lcom/metamoji/cm/CmContext;

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "highResolution"

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;

    iget-object p1, p1, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->this$0:Lcom/metamoji/un/web/UnWebUnitContainerExtender;

    iget-object p2, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;

    iget-object p2, p2, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$context:Lcom/metamoji/cm/CmContext;

    iget-object v0, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;

    iget-object v0, v0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$container:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;->addImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method
