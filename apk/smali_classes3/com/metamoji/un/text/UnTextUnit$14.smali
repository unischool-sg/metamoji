.class Lcom/metamoji/un/text/UnTextUnit$14;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$range:Lcom/metamoji/un/text/model/TextRange;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextRange;)V
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

    .line 3506
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$14;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$14;->val$range:Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3508
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$14;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$14;->val$range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    new-instance v2, Lcom/metamoji/un/text/UnTextUnit$14$1;

    invoke-direct {v2, p0}, Lcom/metamoji/un/text/UnTextUnit$14$1;-><init>(Lcom/metamoji/un/text/UnTextUnit$14;)V

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method
