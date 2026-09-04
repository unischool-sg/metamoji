.class public Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "VcSelectRecordingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog$RecordingsListAdapter;
    }
.end annotation


# static fields
.field private static final KEY_RECORDINGS_LIST:Ljava/lang/String; = "recordingsList"


# instance fields
.field _adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectItem()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public init(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    const-string p1, "recordingsList"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 63
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_voice_select_recordings:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->mViewId:I

    .line 64
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_SelectPlayFile:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->mClose:Z

    .line 66
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->mDone:Z

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    const-string v2, "recordingsList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 71
    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_items:Ljava/util/List;

    .line 73
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_adapter:Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog$RecordingsListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_items:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog$RecordingsListAdapter;-><init>(Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_adapter:Landroid/widget/ArrayAdapter;

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->voice_select_recordigns_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_list:Landroid/widget/ListView;

    .line 82
    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_list:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-virtual {p2, v0, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 84
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
