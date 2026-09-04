.class Lcom/metamoji/un/image/UnImageUnit$4;
.super Ljava/lang/Object;
.source "UnImageUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageUnit;->editImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/image/UnImageUnit;

.field final synthetic val$holdImage:Lcom/metamoji/cm/SharedReference;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/cm/SharedReference;)V
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

    .line 916
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit$4;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    iput-object p2, p0, Lcom/metamoji/un/image/UnImageUnit$4;->val$holdImage:Lcom/metamoji/cm/SharedReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 919
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit$4;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/un/image/UnImageUnit;->mCloseImageEditDialog:Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;

    .line 920
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit$4;->val$holdImage:Lcom/metamoji/cm/SharedReference;

    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    return-void
.end method
