.class Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;
.super Ljava/lang/Object;
.source "UnWebUnitContainerExtender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;

    iget-object p1, p1, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$blob:Lcom/metamoji/cm/Blob;

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromBlob(Lcom/metamoji/cm/Blob;Z)Lcom/metamoji/cm/Blob;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;

    iget-object p2, p2, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$unit:Lcom/metamoji/un/web/UnWebUnit;

    iget-object v0, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;->this$1:Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;

    iget-object v0, v0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$url:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/un/web/UnWebUnit;->replaceURL(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    return-void
.end method
