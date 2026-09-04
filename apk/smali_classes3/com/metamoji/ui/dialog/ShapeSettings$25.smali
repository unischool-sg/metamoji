.class Lcom/metamoji/ui/dialog/ShapeSettings$25;
.super Ljava/lang/Object;
.source "ShapeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeSettings;->updateStyleView_Fill(Lcom/metamoji/ui/common/UiButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

.field final synthetic val$cm:Lcom/metamoji/cm/CmTaskManager;

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeSettings;Lcom/metamoji/cm/CmTaskManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 688
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$25;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings$25;->val$cm:Lcom/metamoji/cm/CmTaskManager;

    iput p3, p0, Lcom/metamoji/ui/dialog/ShapeSettings$25;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$25;->val$cm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeSettings$25$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeSettings$25$1;-><init>(Lcom/metamoji/ui/dialog/ShapeSettings$25;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
