.class Lcom/metamoji/ns/NsCollaboManager$38;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->updateUserInfo(Ljava/util/Map;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$bar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V
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

    .line 3467
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$38;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$38;->val$bar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3470
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$38;->val$bar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolEditLayerBtn()V

    return-void
.end method
