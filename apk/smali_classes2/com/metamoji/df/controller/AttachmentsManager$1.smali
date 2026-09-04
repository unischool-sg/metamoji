.class Lcom/metamoji/df/controller/AttachmentsManager$1;
.super Ljava/lang/Object;
.source "AttachmentsManager.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapAttachment(Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Lcom/metamoji/cm/Blob;",
        "Lcom/metamoji/cm/BitmapEx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/AttachmentsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/df/controller/AttachmentsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager$1;->this$0:Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/BitmapEx;
    .locals 2

    .line 586
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsManager;->isHighResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x438

    const/16 v1, 0x5a0

    goto :goto_0

    :cond_0
    const/16 v0, 0x21c

    const/16 v1, 0x2d0

    .line 590
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapExFromBlob(Lcom/metamoji/cm/Blob;II)Lcom/metamoji/cm/BitmapEx;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 581
    check-cast p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/AttachmentsManager$1;->apply(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/BitmapEx;

    move-result-object p1

    return-object p1
.end method
