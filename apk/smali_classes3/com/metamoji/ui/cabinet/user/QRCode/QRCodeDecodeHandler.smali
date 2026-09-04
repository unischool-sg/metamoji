.class public final Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;
.super Landroid/os/Handler;
.source "QRCodeDecodeHandler.java"


# instance fields
.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private final qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->running:Z

    .line 53
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 55
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;

    return-void
.end method

.method private decode([BII)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 100
    throw p1

    .line 99
    :catch_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_0
    const/4 p1, 0x0

    .line 103
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;

    invoke-interface {p2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;->getQRCodeHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    const/4 p3, 0x3

    .line 106
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x4

    .line 111
    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9

    .line 122
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;

    invoke-interface {v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;->isQRCodeCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move v6, p2

    move v7, p3

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->running:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    :goto_0
    return-void

    .line 68
    :cond_1
    const-string p1, "[QRCode] DecodeThreadHandler quit.."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->running:Z

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    .line 65
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;->decode([BII)V

    return-void
.end method
