.class Lcom/metamoji/nt/NtPageController$1;
.super Lcom/metamoji/nt/NtPageController$BGImageParams;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->getBackgroundImageParams()Lcom/metamoji/nt/NtPageController$BGImageParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$bgImageUnit:Lcom/metamoji/un/bgimage/UnBGImageUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/un/bgimage/UnBGImageUnit;)V
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

    .line 832
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$1;->this$0:Lcom/metamoji/nt/NtPageController;

    iput-object p2, p0, Lcom/metamoji/nt/NtPageController$1;->val$bgImageUnit:Lcom/metamoji/un/bgimage/UnBGImageUnit;

    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$BGImageParams;-><init>()V

    .line 833
    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getImageData()Lcom/metamoji/cm/Blob;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$1;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 834
    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getBGStyle()Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$1;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 835
    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getBgColor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$1;->Color:Ljava/lang/String;

    .line 836
    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getOpacity()F

    move-result p1

    iput p1, p0, Lcom/metamoji/nt/NtPageController$1;->Opacity:F

    .line 837
    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getColorOpacity()F

    move-result p1

    iput p1, p0, Lcom/metamoji/nt/NtPageController$1;->ColorOpacity:F

    return-void
.end method
