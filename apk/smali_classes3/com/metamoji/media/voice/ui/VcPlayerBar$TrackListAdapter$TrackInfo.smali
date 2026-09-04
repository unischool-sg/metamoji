.class Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackInfo"
.end annotation


# instance fields
.field public m_position:I

.field public m_type:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

.field final synthetic this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3259
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3260
    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->m_type:Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;

    .line 3261
    iput p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter$TrackInfo;->m_position:I

    return-void
.end method
