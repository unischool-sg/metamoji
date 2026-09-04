.class Lcom/metamoji/un/text/UnTextUnit$23;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->commandReedit(Lcom/metamoji/un/text/UnTextUnit$CommandId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$commandId:Lcom/metamoji/un/text/UnTextUnit$CommandId;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CommandId;)V
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

    .line 5438
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$23;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$23;->val$commandId:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5442
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$23;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$misSupportReedit(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5443
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$23;->val$commandId:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$CommandId;->ordinal()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5447
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$23;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$menterStrokeReeditMode(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)V

    return-void

    .line 5445
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$23;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$menterStrokeReeditMode(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)V

    :cond_2
    :goto_0
    return-void
.end method
