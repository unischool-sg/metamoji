.class Lcom/metamoji/un/text/UnTextUnit$13;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$ec:Lcom/metamoji/df/controller/EditContext;

.field final synthetic val$handleDirection:Z

.field final synthetic val$props:Lcom/metamoji/df/controller/GeometricProps;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3035
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$13;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$13;->val$props:Lcom/metamoji/df/controller/GeometricProps;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$13;->val$ec:Lcom/metamoji/df/controller/EditContext;

    iput-boolean p4, p0, Lcom/metamoji/un/text/UnTextUnit$13;->val$handleDirection:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3038
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$13;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$13;->val$props:Lcom/metamoji/df/controller/GeometricProps;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$13;->val$ec:Lcom/metamoji/df/controller/EditContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3040
    sget-object v1, Lcom/metamoji/noteanytime/BuildConfig;->SHARE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3043
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$13;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgetediting(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnit$13;->val$handleDirection:Z

    if-nez v1, :cond_0

    .line 3044
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$13;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fput_collaboModified(Lcom/metamoji/un/text/UnTextUnit;Z)V

    .line 3045
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$13;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3035
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$13;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
