.class Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

.field final synthetic val$checkBox:Landroid/widget/ToggleButton;

.field final synthetic val$trackInfo:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;Landroid/widget/ToggleButton;Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3158
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;->val$checkBox:Landroid/widget/ToggleButton;

    iput-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;->val$trackInfo:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3160
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;->val$checkBox:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    .line 3161
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$1;->val$trackInfo:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    iget v1, v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->m_position:I

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleCheckButtonCheckedChanged(IZ)V

    return-void
.end method
