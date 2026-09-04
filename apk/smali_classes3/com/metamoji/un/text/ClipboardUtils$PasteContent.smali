.class public Lcom/metamoji/un/text/ClipboardUtils$PasteContent;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/ClipboardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasteContent"
.end annotation


# instance fields
.field public plainText:Ljava/lang/CharSequence;

.field public swsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
