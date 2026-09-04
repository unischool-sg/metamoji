.class Lcom/metamoji/un/text/UnTextUnit$17;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$_drUndoModel:Lcom/metamoji/df/model/IModel;

.field final synthetic val$_isUndo:Z

.field final synthetic val$_props:Lcom/metamoji/df/controller/GeometricProps;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;Z)V
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

    .line 4155
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$17;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$17;->val$_props:Lcom/metamoji/df/controller/GeometricProps;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$17;->val$_drUndoModel:Lcom/metamoji/df/model/IModel;

    iput-boolean p4, p0, Lcom/metamoji/un/text/UnTextUnit$17;->val$_isUndo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4158
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$17;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$17;->val$_props:Lcom/metamoji/df/controller/GeometricProps;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$17;->val$_drUndoModel:Lcom/metamoji/df/model/IModel;

    iget-boolean v3, p0, Lcom/metamoji/un/text/UnTextUnit$17;->val$_isUndo:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->setGeometricUndoOrRedoCore(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method
