.class public final Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;
.super Ljava/lang/Object;
.source "QRCodeFinderViewResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private mFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;->mFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;->mFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
