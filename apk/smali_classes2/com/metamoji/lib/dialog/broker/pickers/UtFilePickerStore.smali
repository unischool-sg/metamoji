.class public final Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;
.super Lcom/metamoji/lib/dialog/broker/UtActivityBrokerStore;
.source "UtFilePickerStore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
        "Lcom/metamoji/lib/dialog/broker/UtActivityBrokerStore;",
        "<init>",
        "()V",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "openFilePicker",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;",
        "getOpenFilePicker",
        "()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;",
        "openMultiFilePicker",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;",
        "getOpenMultiFilePicker",
        "()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;",
        "openReadOnlyFilePicker",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;",
        "getOpenReadOnlyFilePicker",
        "()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;",
        "openReadOnlyMultiFilePicker",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;",
        "getOpenReadOnlyMultiFilePicker",
        "()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;",
        "createFilePicker",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;",
        "getCreateFilePicker",
        "()Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;",
        "directoryPicker",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;",
        "getDirectoryPicker",
        "()Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;",
        "brokerList",
        "",
        "Lcom/metamoji/lib/dialog/broker/IUtActivityBroker;",
        "getBrokerList",
        "()Ljava/util/List;",
        "dialog"
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
.field private final brokerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/broker/IUtActivityBroker;",
            ">;"
        }
    .end annotation
.end field

.field private final createFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

.field private final directoryPicker:Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

.field private final openFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

.field private final openMultiFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

.field private final openReadOnlyFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

.field private final openReadOnlyMultiFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 13
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/UtActivityBrokerStore;-><init>()V

    .line 24
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    .line 28
    new-instance v1, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    invoke-direct {v1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;-><init>()V

    iput-object v1, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openMultiFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    .line 33
    new-instance v2, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

    invoke-direct {v2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;-><init>()V

    iput-object v2, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openReadOnlyFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

    .line 37
    new-instance v3, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    invoke-direct {v3}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;-><init>()V

    iput-object v3, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openReadOnlyMultiFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    .line 42
    new-instance v4, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    invoke-direct {v4}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;-><init>()V

    iput-object v4, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->createFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    .line 47
    new-instance v5, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    invoke-direct {v5}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;-><init>()V

    iput-object v5, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->directoryPicker:Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    const/4 v6, 0x6

    .line 50
    new-array v6, v6, [Lcom/metamoji/lib/dialog/broker/UtActivityBroker;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->brokerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->register(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->register(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public getBrokerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/broker/IUtActivityBroker;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->brokerList:Ljava/util/List;

    return-object v0
.end method

.method public final getCreateFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->createFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    return-object v0
.end method

.method public final getDirectoryPicker()Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->directoryPicker:Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    return-object v0
.end method

.method public final getOpenFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    return-object v0
.end method

.method public final getOpenMultiFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openMultiFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    return-object v0
.end method

.method public final getOpenReadOnlyFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openReadOnlyFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

    return-object v0
.end method

.method public final getOpenReadOnlyMultiFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->openReadOnlyMultiFilePicker:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    return-object v0
.end method
