.class public Lcom/metamoji/ui/UiPaperSize$PaperSize;
.super Ljava/lang/Object;
.source "UiPaperSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiPaperSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PaperSize"
.end annotation


# instance fields
.field public dispname:Ljava/lang/String;

.field public height:F

.field public id:I

.field public name:Ljava/lang/String;

.field public portrait:Z

.field public printHeight:F

.field public printWidth:F

.field final synthetic this$0:Lcom/metamoji/ui/UiPaperSize;

.field public width:F


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/UiPaperSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/metamoji/ui/UiPaperSize$PaperSize;->this$0:Lcom/metamoji/ui/UiPaperSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
