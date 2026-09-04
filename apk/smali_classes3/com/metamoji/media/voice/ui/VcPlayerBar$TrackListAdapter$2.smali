.class Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;
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

.field final synthetic val$trackInfo:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3210
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;->val$trackInfo:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3212
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    iget-object p1, p1, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$2;->val$trackInfo:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;

    iget v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->m_position:I

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayRangeButtonTouchUp(I)V

    return-void
.end method
