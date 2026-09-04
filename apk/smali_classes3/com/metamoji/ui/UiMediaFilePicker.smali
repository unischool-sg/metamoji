.class public abstract Lcom/metamoji/ui/UiMediaFilePicker;
.super Ljava/lang/Object;
.source "UiMediaFilePicker.kt"

# interfaces
.implements Lcom/metamoji/ui/IUiMediaFilePicker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0096@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/ui/UiMediaFilePicker;",
        "Lcom/metamoji/ui/IUiMediaFilePicker;",
        "pickerStore",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
        "mimeTypes",
        "",
        "",
        "<init>",
        "(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;[Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "getSource",
        "Landroid/net/Uri;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSources",
        "",
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


# instance fields
.field private final mimeTypes:[Ljava/lang/String;

.field private final pickerStore:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "pickerStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaFilePicker;->pickerStore:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    iput-object p2, p0, Lcom/metamoji/ui/UiMediaFilePicker;->mimeTypes:[Ljava/lang/String;

    return-void
.end method

.method static synthetic getSource$suspendImpl(Lcom/metamoji/ui/UiMediaFilePicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiMediaFilePicker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaFilePicker;->pickerStore:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getOpenFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    move-result-object v0

    iget-object p0, p0, Lcom/metamoji/ui/UiMediaFilePicker;->mimeTypes:[Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;->selectFile([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getSources$suspendImpl(Lcom/metamoji/ui/UiMediaFilePicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiMediaFilePicker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/metamoji/ui/UiMediaFilePicker;->pickerStore:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getOpenMultiFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    move-result-object v0

    iget-object p0, p0, Lcom/metamoji/ui/UiMediaFilePicker;->mimeTypes:[Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;->selectFiles([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 20
    invoke-super {p0}, Lcom/metamoji/ui/IUiMediaFilePicker;->close()V

    return-void
.end method

.method public getSource(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/ui/UiMediaFilePicker;->getSource$suspendImpl(Lcom/metamoji/ui/UiMediaFilePicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSources(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/ui/UiMediaFilePicker;->getSources$suspendImpl(Lcom/metamoji/ui/UiMediaFilePicker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
