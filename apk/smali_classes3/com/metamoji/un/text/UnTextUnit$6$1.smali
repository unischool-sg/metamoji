.class Lcom/metamoji/un/text/UnTextUnit$6$1;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/text/UnTextUnit$6;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2022
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$6$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2024
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$6$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$6;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnit$6;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fget_rubberBand(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/util/UnRubberBandSupport;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$6$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$6;

    iget-object v1, v1, Lcom/metamoji/un/text/UnTextUnit$6;->val$activities:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/util/UnRubberBandSupport;->begin(Lcom/metamoji/rb/RbConstants$Activity;)V

    return-void
.end method
