.class public Lcom/metamoji/nt/NtPageController$BGImageParams;
.super Ljava/lang/Object;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BGImageParams"
.end annotation


# instance fields
.field public Color:Ljava/lang/String;

.field public ColorOpacity:F

.field public ImageBlob:Lcom/metamoji/cm/Blob;

.field public Opacity:F

.field public Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
