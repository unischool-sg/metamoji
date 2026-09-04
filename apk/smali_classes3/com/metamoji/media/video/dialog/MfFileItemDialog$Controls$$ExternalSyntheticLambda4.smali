.class public final synthetic Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    invoke-static {v0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->_init_$lambda$4(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
