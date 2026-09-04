.class public final Lcom/metamoji/ui/UiVideoFilePicker;
.super Lcom/metamoji/ui/UiMediaFilePicker;
.source "UiMediaFilePicker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/ui/UiVideoFilePicker;",
        "Lcom/metamoji/ui/UiMediaFilePicker;",
        "pickerStore",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;)V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;)V
    .locals 3

    const-string v0, "pickerStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "video/*"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/UiMediaFilePicker;-><init>(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;[Ljava/lang/String;)V

    return-void
.end method
