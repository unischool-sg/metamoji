.class public final Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;
.super Ljava/lang/Thread;
.source "QRCodeDecodeThread.java"


# static fields
.field public static final QRCODE_MSG_DECODE:I = 0x1

.field public static final QRCODE_MSG_ERROR:I = 0x2

.field public static final QRCODE_MSG_FAILED:I = 0x4

.field public static final QRCODE_MSG_QUIT:I = 0x5

.field public static final QRCODE_MSG_SUCCEEDED:I = 0x3


# instance fields
.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;Lcom/google/zxing/ResultPointCallback;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;

    .line 63
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->hints:Ljava/util/Map;

    .line 65
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->decodeFormats:Ljava/util/Collection;

    .line 66
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 79
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->decodeFormats:Ljava/util/Collection;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 93
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    new-instance v0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->qrCodeOwner:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeHandler;-><init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->handler:Landroid/os/Handler;

    .line 96
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
