.class public final Lcom/metamoji/un/video/UnVideoUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnVideoUnit.kt"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoUnit$Companion;,
        Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;,
        Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;,
        Lcom/metamoji/un/video/UnVideoUnit$IClosableDialog;,
        Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;,
        Lcom/metamoji/un/video/UnVideoUnit$ModelDef;,
        Lcom/metamoji/un/video/UnVideoUnit$State;,
        Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;,
        Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00b4\u00012\u00020\u00012\u00020\u0002:\u0012\u00b3\u0001\u00b4\u0001\u00b5\u0001\u00b6\u0001\u00b7\u0001\u00b8\u0001\u00b9\u0001\u00ba\u0001\u00bb\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010O\u001a\u00020-2\u0006\u0010P\u001a\u00020QH\u0002J\u0018\u0010R\u001a\u00020-2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VH\u0002J\u0008\u0010Y\u001a\u00020-H\u0016J\u0008\u0010Z\u001a\u00020-H\u0016J\u0008\u0010[\u001a\u00020-H\u0016J\u0008\u0010\\\u001a\u00020-H\u0016J\u0010\u0010^\u001a\u00020_2\u0006\u0010\u0003\u001a\u00020\u0004H\u0014J\u0010\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020bH\u0014J\u0006\u0010c\u001a\u00020_J\u0006\u0010d\u001a\u00020_J\u0006\u0010e\u001a\u00020_J\u0010\u0010f\u001a\u00020_2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010g\u001a\u00020_2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010h\u001a\u00020_H\u0002J\u0012\u0010i\u001a\u00020-2\u0008\u0010j\u001a\u0004\u0018\u00010kH\u0016J\u0008\u0010l\u001a\u00020_H\u0002J\u0008\u0010m\u001a\u00020\u000cH\u0002J\u0008\u0010n\u001a\u00020_H\u0002J\u0008\u0010o\u001a\u00020\u000cH\u0002J\u0008\u0010p\u001a\u00020_H\u0002J\"\u0010q\u001a\u00020_2\u0006\u0010a\u001a\u00020b2\u0008\u0010r\u001a\u0004\u0018\u00010s2\u0006\u0010t\u001a\u00020uH\u0016J\u0018\u0010v\u001a\u00020_2\u0006\u0010w\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010x\u001a\u00020_H\u0002J\u0008\u0010y\u001a\u00020_H\u0002J\u0008\u0010z\u001a\u00020\u0008H\u0016J6\u0010{\u001a\u00020_2\u000e\u0010|\u001a\n\u0012\u0004\u0012\u00020~\u0018\u00010}2\t\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u00012\u0011\u0010\u0081\u0001\u001a\u000c\u0018\u00010\u0082\u0001j\u0005\u0018\u0001`\u0083\u0001H\u0016J\u001d\u0010\u0084\u0001\u001a\u00020_2\u0007\u0010\u0085\u0001\u001a\u00020~2\t\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u0001H\u0002J\u0013\u0010\u0088\u0001\u001a\u00020_2\u0008\u0010\u0089\u0001\u001a\u00030\u0087\u0001H\u0002J\u0013\u0010\u008a\u0001\u001a\u00020_2\u0008\u0010\u0089\u0001\u001a\u00030\u0087\u0001H\u0002J\u0014\u0010\u008c\u0001\u001a\u00020_2\t\u0010t\u001a\u0005\u0018\u00010\u008d\u0001H\u0016J\u0015\u0010\u008e\u0001\u001a\u00020-2\n\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0002J\u0012\u0010\u0091\u0001\u001a\u00020_2\u0007\u0010\u0092\u0001\u001a\u00020-H\u0016J\t\u0010\u0093\u0001\u001a\u00020-H\u0016J\u000c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0002J\n\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0002J\u0007\u0010\u009b\u0001\u001a\u00020_J\u0007\u0010\u009c\u0001\u001a\u00020_J\t\u0010\u009d\u0001\u001a\u00020_H\u0002J\u0007\u0010\u009e\u0001\u001a\u00020_J\t\u0010\u009f\u0001\u001a\u00020_H\u0002J\t\u0010\u00a0\u0001\u001a\u00020_H\u0002J\u0011\u0010\u00a1\u0001\u001a\u00020_2\u0008\u0010\u00a2\u0001\u001a\u00030\u0090\u0001J(\u0010\u00ab\u0001\u001a\u00020_2\u0007\u0010\u00ac\u0001\u001a\u00020\u00082\u0008\u0010\u00ad\u0001\u001a\u00030\u00ae\u00012\n\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00b0\u0001H\u0002J!\u0010\u00b1\u0001\u001a\u00020_2\u0008\u0010\u00ad\u0001\u001a\u00030\u00ae\u00012\u000c\u0008\u0002\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00b0\u0001H\u0002R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0010\u0010\u000eR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0012\u0010\u000eR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u001a\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00088B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR(\u0010\u001f\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00088F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\u0016\u0010\"\u001a\u0004\u0018\u00010#8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\'8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0014\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008,\u0010\u000eR$\u0010.\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020-8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u00104\u001a\u00020-2\u0006\u00103\u001a\u00020-8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00100\"\u0004\u00085\u00102R\u0013\u00106\u001a\u0004\u0018\u0001078F\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u0011\u0010:\u001a\u00020;\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R$\u0010>\u001a\u00020-2\u0006\u00103\u001a\u00020-8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008>\u00100\"\u0004\u0008?\u00102R*\u0010@\u001a\u00020\'2\u0006\u00103\u001a\u00020\'8F@BX\u0086\u000e\u00a2\u0006\u0012\u0012\u0004\u0008A\u0010\u000e\u001a\u0004\u0008B\u0010)\"\u0004\u0008C\u0010DR*\u0010E\u001a\u00020\'2\u0006\u00103\u001a\u00020\'8F@BX\u0086\u000e\u00a2\u0006\u0012\u0012\u0004\u0008F\u0010\u000e\u001a\u0004\u0008G\u0010)\"\u0004\u0008H\u0010DR\u0016\u0010I\u001a\u0004\u0018\u00010J8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010LR\u0014\u0010M\u001a\u00020-8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u00100R\u0014\u0010W\u001a\u00020-8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u00100R\u0014\u0010X\u001a\u00020-8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u00100R\u000e\u0010]\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0087\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u008b\u0001\u001a\u00020-X\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0096\u0001\u001a\u00020-8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0097\u0001\u00100R\u0016\u0010\u0098\u0001\u001a\u00020-8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0098\u0001\u00100R!\u0010\u00a3\u0001\u001a\u00030\u00a4\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u0014\u0010\u00a9\u0001\u001a\u00070\u00aa\u0001R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "Lcom/metamoji/nt/NtUnitController;",
        "Lcom/metamoji/ns/direction/INsDirectionHandler;",
        "context",
        "Lcom/metamoji/df/controller/ControllerContext;",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "type",
        "",
        "<init>",
        "(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V",
        "m_posterSprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "getM_posterSprite$annotations",
        "()V",
        "m_buttonSprite",
        "getM_buttonSprite$annotations",
        "m_messageSprite",
        "getM_messageSprite$annotations",
        "mMoviePlayer",
        "Lcom/metamoji/un/video/IUnMoviePlayer;",
        "getMMoviePlayer",
        "()Lcom/metamoji/un/video/IUnMoviePlayer;",
        "setMMoviePlayer",
        "(Lcom/metamoji/un/video/IUnMoviePlayer;)V",
        "v",
        "thumbnailTicket",
        "getThumbnailTicket",
        "()Ljava/lang/String;",
        "setThumbnailTicket",
        "(Ljava/lang/String;)V",
        "videoTicket",
        "getVideoTicket",
        "setVideoTicket",
        "thumbnailBlob",
        "Lcom/metamoji/cm/Blob;",
        "getThumbnailBlob",
        "()Lcom/metamoji/cm/Blob;",
        "thumbnailTime",
        "",
        "getThumbnailTime$app",
        "()D",
        "m_state",
        "Lcom/metamoji/un/video/UnVideoUnit$State;",
        "getM_state$annotations",
        "",
        "onCurrentPage",
        "getOnCurrentPage",
        "()Z",
        "setOnCurrentPage",
        "(Z)V",
        "value",
        "isMuted",
        "setMuted",
        "attachmentManager",
        "Lcom/metamoji/df/controller/AttachmentsManager;",
        "getAttachmentManager",
        "()Lcom/metamoji/df/controller/AttachmentsManager;",
        "markerManager",
        "Lcom/metamoji/un/video/UnVideoMarkerManager;",
        "getMarkerManager",
        "()Lcom/metamoji/un/video/UnVideoMarkerManager;",
        "isStillMode",
        "setStillMode",
        "startFromInStillMode",
        "getStartFromInStillMode$annotations",
        "getStartFromInStillMode",
        "setStartFromInStillMode",
        "(D)V",
        "playToInStillMode",
        "getPlayToInStillMode$annotations",
        "getPlayToInStillMode",
        "setPlayToInStillMode",
        "unitManager",
        "Lcom/metamoji/un/video/UnVideoUnitManager;",
        "getUnitManager",
        "()Lcom/metamoji/un/video/UnVideoUnitManager;",
        "inCurrentLayer",
        "getInCurrentLayer",
        "isPlayableLayer",
        "layer",
        "Lcom/metamoji/nt/NtLayerController;",
        "isPlayableMode",
        "editMode",
        "Lcom/metamoji/nt/NtDocument$EditMode;",
        "toolMode",
        "Lcom/metamoji/nt/NtDocument$ToolMode;",
        "isPlayable",
        "isSelectionMode",
        "noRotating",
        "noResizingX",
        "noResizingY",
        "ignoreFocusRestrictionsByOthers",
        "handleVideoUploadStateChanged",
        "init",
        "",
        "setSpriteGeometry",
        "props",
        "Lcom/metamoji/df/controller/GeometricProps;",
        "refreshSpriteGeometry",
        "refreshThumbnail",
        "uploadVideoFile",
        "preDestroyController",
        "destroyController",
        "updatePlayAndForbiddenSprite",
        "listenBroadcast",
        "eventContext",
        "Lcom/metamoji/df/controller/BroadcastContext;",
        "updateSprite",
        "createButtonSprite",
        "updateButtonSprite",
        "createMessageSprite",
        "updateMessageSprite",
        "setGeometricProps",
        "editContext",
        "Lcom/metamoji/df/controller/EditContext;",
        "options",
        "Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;",
        "performUndoOrRedo",
        "isUndo",
        "registerCollaboHandler",
        "unregisterCollaboHandler",
        "getDirectionHandlerID",
        "handleDirections",
        "receivedDirections",
        "",
        "Lcom/metamoji/ns/direction/NsReceivedDirection;",
        "observer",
        "Lcom/metamoji/ns/direction/INsDirectionObserver;",
        "onCompleted",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "handleOneDirection",
        "receivedDirection",
        "mReservedDirection",
        "Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "handleChairmansDirectionInternal",
        "chairman",
        "handleChairmansDirection",
        "foregroundUploadOnTap",
        "setFocus",
        "Lcom/metamoji/nt/NtFocusOption;",
        "playOrUpload",
        "globalPos",
        "Landroid/graphics/PointF;",
        "killFocus",
        "isFocusOutFromDescendents",
        "requestForEditMode",
        "getVideoSource",
        "Lcom/metamoji/un/video/UnVideoSource;",
        "checkOwnerAndEditability",
        "getCheckOwnerAndEditability",
        "isReadOnly",
        "getPlayerRectOnScroller",
        "Landroid/graphics/RectF;",
        "adjustPlayerPosition",
        "onPlayerRestoredByAndroid",
        "showPlayer",
        "hidePlayer",
        "closeAllDialogs",
        "hidePlayerCore",
        "handleTap",
        "posGlobal",
        "manipulationListener",
        "Lcom/metamoji/df/sprite/ViewportListener;",
        "getManipulationListener",
        "()Lcom/metamoji/df/sprite/ViewportListener;",
        "manipulationListener$delegate",
        "Lkotlin/Lazy;",
        "uploadProgress",
        "Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;",
        "onVideoUploadStateChanged",
        "ticket",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "progress",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "setUploadStatus",
        "option",
        "IClosableDialog",
        "Companion",
        "ModelDef",
        "ExtInfoKey",
        "ExtInfoValue",
        "State",
        "UndoModelDef",
        "ManipulationListener",
        "UploadProgress",
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


# static fields
.field private static final BTN_LINE_WIDTH:F = 6.0f

.field private static final COLOR_BTN_BG:I

.field private static final COLOR_BTN_FG:I

.field public static final Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

.field public static final MODELTYPE:Ljava/lang/String; = "$video"

.field public static final MSG_SPRITE_MARGIN_HORZ:F = 4.0f

.field public static final MSG_SPRITE_MARGIN_VERT:F = 2.0f

.field private static final PAINT_LINK$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/metamoji/df/sprite/PaintSolid;",
            ">;"
        }
    .end annotation
.end field

.field public static final STILL_MODE_ENABLED:Z = false

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final foregroundUploadOnTap:Z

.field private handleVideoUploadStateChanged:Ljava/lang/String;

.field private mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

.field private mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

.field private m_buttonSprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_messageSprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_state:Lcom/metamoji/un/video/UnVideoUnit$State;

.field private final manipulationListener$delegate:Lkotlin/Lazy;

.field private final markerManager:Lcom/metamoji/un/video/UnVideoMarkerManager;

.field private final uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnVideoUnit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    .line 56
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "VIDEO"

    const/4 v4, 0x0

    const-string v5, "com.metamoji."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/un/video/UnVideoUnit;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/16 v0, 0xee

    const/16 v1, 0xff

    .line 78
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/un/video/UnVideoUnit;->COLOR_BTN_FG:I

    const/16 v0, 0x50

    .line 79
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/un/video/UnVideoUnit;->COLOR_BTN_BG:I

    .line 82
    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit;->PAINT_LINK$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 226
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$State;

    invoke-direct {p1}, Lcom/metamoji/un/video/UnVideoUnit$State;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_state:Lcom/metamoji/un/video/UnVideoUnit$State;

    .line 263
    new-instance p1, Lcom/metamoji/un/video/UnVideoMarkerManager;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->markerManager:Lcom/metamoji/un/video/UnVideoMarkerManager;

    .line 375
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->handleVideoUploadStateChanged:Ljava/lang/String;

    .line 1098
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->manipulationListener$delegate:Lkotlin/Lazy;

    .line 1168
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    return-void
.end method

.method static final PAINT_LINK_delegate$lambda$12()Lcom/metamoji/df/sprite/PaintSolid;
    .locals 2

    .line 82
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    const v1, -0xffff01

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    return-object v0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getPAINT_LINK$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->PAINT_LINK$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getPlayerRectOnScroller(Lcom/metamoji/un/video/UnVideoUnit;)Landroid/graphics/RectF;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getPlayerRectOnScroller()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onVideoUploadStateChanged(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoUnit;->onVideoUploadStateChanged(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    return-void
.end method

.method private final closeAllDialogs()V
    .locals 0

    return-void
.end method

.method private final createButtonSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 14

    .line 590
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v1, 0x1

    .line 591
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    const/high16 v2, 0x42700000    # 60.0f

    .line 592
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 593
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 595
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v3, 0x40c00000    # 6.0f

    .line 596
    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 597
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    sget v4, Lcom/metamoji/un/video/UnVideoUnit;->COLOR_BTN_FG:I

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 598
    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 599
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    sget v4, Lcom/metamoji/un/video/UnVideoUnit;->COLOR_BTN_BG:I

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v4, 0x41f00000    # 30.0f

    .line 600
    invoke-virtual {v2, v4, v4, v3}, Lcom/metamoji/df/sprite/Graphics;->drawCircle(FFF)V

    const/4 v3, 0x2

    int-to-float v5, v3

    const v6, 0x41766666    # 15.4f

    div-float/2addr v6, v5

    const/4 v7, 0x3

    .line 606
    new-array v7, v7, [Landroid/graphics/PointF;

    new-instance v8, Landroid/graphics/PointF;

    const/16 v9, 0x1e

    int-to-float v9, v9

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    invoke-direct {v8, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    aput-object v8, v7, v4

    new-instance v4, Landroid/graphics/PointF;

    sub-float v5, v9, v6

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    mul-float/2addr v8, v6

    sub-float v8, v9, v8

    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v7, v1

    new-instance v1, Landroid/graphics/PointF;

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v6, v4

    add-float/2addr v9, v6

    invoke-direct {v1, v5, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v7, v3

    const/4 v1, 0x0

    .line 608
    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 609
    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 610
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    const/16 v3, 0xff

    const/16 v4, 0xee

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v1, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 611
    invoke-virtual {v2, v7}, Lcom/metamoji/df/sprite/Graphics;->drawPolyline([Landroid/graphics/PointF;)V

    :cond_0
    return-object v0
.end method

.method public static final createMarkerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->createMarkerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method private final createMessageSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 2

    .line 641
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v1, 0x1

    .line 642
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    const/4 v1, 0x0

    .line 643
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-object v0
.end method

.method public static final createVideoModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->createVideoModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method private final getCheckOwnerAndEditability()Z
    .locals 3

    .line 934
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result v0

    if-nez v0, :cond_3

    .line 935
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    instance-of v1, v0, Lcom/metamoji/nt/NtUnitController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private final getInCurrentLayer()Z
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic getM_buttonSprite$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getM_messageSprite$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getM_posterSprite$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getM_state$annotations()V
    .locals 0

    return-void
.end method

.method private final getOnCurrentPage()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_state:Lcom/metamoji/un/video/UnVideoUnit$State;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit$State;->isOnCurrentPage()Z

    move-result v0

    return v0
.end method

.method public static synthetic getPlayToInStillMode$annotations()V
    .locals 0

    return-void
.end method

.method private final getPlayerRectOnScroller()Landroid/graphics/RectF;
    .locals 6

    .line 941
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 942
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 944
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 945
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 946
    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 943
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 948
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method public static synthetic getStartFromInStillMode$annotations()V
    .locals 0

    return-void
.end method

.method private final getThumbnailBlob()Lcom/metamoji/cm/Blob;
    .locals 3

    .line 213
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getThumbnailTicket()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private final getThumbnailTicket()Ljava/lang/String;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "thumbnailTicket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getVideoUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getVideoSource()Lcom/metamoji/un/video/UnVideoSource;
    .locals 3

    .line 928
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/un/video/UnVideoSource;

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/video/UnVideoSource;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final handleChairmansDirection(Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 2

    .line 853
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final handleChairmansDirection$lambda$8(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnit;->handleChairmansDirectionInternal(Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    return-void
.end method

.method private final handleChairmansDirectionInternal(Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 2

    .line 808
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    .line 814
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_1

    .line 817
    invoke-interface {v0, p1}, Lcom/metamoji/un/video/IUnMoviePlayer;->request(Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    .line 818
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/video/WvvChairmansStatus;->CLOSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-ne p1, v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayer()V

    :cond_0
    return-void

    .line 824
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->CLOSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-eq v0, v1, :cond_7

    .line 825
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->PAUSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getAction()Lcom/metamoji/un/video/WvvChairmansAction;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->SEEK:Lcom/metamoji/un/video/WvvChairmansAction;

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 834
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    .line 835
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    .line 836
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 839
    :cond_3
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v1, :cond_4

    sget-object p1, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, p1, :cond_4

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getInCurrentLayer()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 841
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    return-void

    .line 844
    :cond_4
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 845
    const-string v0, "index"

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 847
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 848
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->showPlayer()V

    return-void

    .line 838
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->showPlayer()V

    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 828
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    return-void
.end method

.method private final handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 3

    .line 786
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "direction(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;->operationFromDirection(Ljava/lang/Object;Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/operation/UnVideoOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 788
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation;->performWithEditContext(Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object p2

    const-string v0, "layerController(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayableLayer(Lcom/metamoji/nt/NtLayerController;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 795
    sget-object p2, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    invoke-virtual {p2, p1, p0}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;->handleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/UnVideoChairmansDirection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 797
    check-cast p1, Lcom/metamoji/un/video/IWvvChairmansDirection;

    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnit;->handleChairmansDirection(Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    return-void

    .line 800
    :cond_1
    sget-object p1, Lcom/metamoji/un/video/UnVideoUnit;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string/jumbo p2, "video unit received unknown direction"

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final hidePlayerCore()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1004
    iput-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    .line 1005
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getVideoUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnitManager;->getPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->releasePlayer(Lcom/metamoji/un/video/IUnMoviePlayer;)V

    :cond_0
    return-void
.end method

.method static final init$lambda$0(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 2

    .line 386
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 387
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 389
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isStillMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->createButtonSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_buttonSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 391
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->createMessageSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_messageSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 392
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updatePlayAndForbiddenSprite()V

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_buttonSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 394
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_messageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_buttonSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 397
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_messageSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 399
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateSprite()V

    return-void
.end method

.method private final isPlayable()Z
    .locals 3

    .line 336
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    const-string v1, "getEditMode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v1

    const-string v2, "getToolMode(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayableMode(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)Z

    move-result v0

    return v0
.end method

.method private final isPlayableLayer(Lcom/metamoji/nt/NtLayerController;)Z
    .locals 1

    .line 311
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentLayer()Lcom/metamoji/df/controller/DfLayerController;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private final isPlayableMode(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)Z
    .locals 1

    .line 329
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    const-string p2, "layerController(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayableLayer(Lcom/metamoji/nt/NtLayerController;)Z

    move-result p1

    return p1

    .line 330
    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getInCurrentLayer()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final isReadOnly()Z
    .locals 2

    .line 938
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getCheckOwnerAndEditability()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final isSelectionMode()Z
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final listenBroadcast$lambda$4(Lcom/metamoji/un/video/IUnMoviePlayer;Z)V
    .locals 0

    .line 538
    invoke-interface {p0, p1}, Lcom/metamoji/un/video/IUnMoviePlayer;->setReadOnly(Z)V

    return-void
.end method

.method static final manipulationListener_delegate$lambda$11(Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;
    .locals 1

    .line 1099
    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;

    invoke-direct {v0, p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    return-object v0
.end method

.method private final onVideoUploadStateChanged(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1175
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/video/UnVideoUnit;->setUploadStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 1176
    sget-object p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne p2, p1, :cond_0

    .line 1178
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateSprite()V

    :cond_0
    return-void
.end method

.method private final playOrUpload(Landroid/graphics/PointF;)Z
    .locals 4

    .line 895
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_messageSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 897
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 898
    iget-boolean v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->foregroundUploadOnTap:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnit;->uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-virtual {v3}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->isUplodableStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 899
    :cond_0
    iget-boolean v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->foregroundUploadOnTap:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnit;->uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-virtual {v3}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->needsToUploadStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    :cond_1
    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->hitTestPoint(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 901
    iget-boolean p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->foregroundUploadOnTap:Z

    if-eqz p1, :cond_2

    .line 902
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->movieUpload(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_2
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->shakeIt(Ljava/util/Collection;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 909
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->showPlayer()V

    const/4 p1, 0x1

    return p1
.end method

.method static final preDestroyController$lambda$3(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayerCore()V

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->closeAllDialogs()V

    .line 486
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_state:Lcom/metamoji/un/video/UnVideoUnit$State;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit$State;->isOnCurrentPage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lcom/metamoji/un/video/UnVideoUnit;->setOnCurrentPage(Z)V

    :cond_1
    return-void
.end method

.method static final refreshThumbnail$lambda$2(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateSprite()V

    return-void
.end method

.method private final registerCollaboHandler()V
    .locals 2

    .line 748
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/metamoji/ns/direction/INsDirectionHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    return-void
.end method

.method private final setOnCurrentPage(Z)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_state:Lcom/metamoji/un/video/UnVideoUnit$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/video/UnVideoUnit$State;->setOnCurrentPage(Z)V

    return-void
.end method

.method private final setPlayToInStillMode(D)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "playTo"

    invoke-interface {v0, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method static final setSpriteGeometry$lambda$1(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateSprite()V

    return-void
.end method

.method private final setStartFromInStillMode(D)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "startFrom"

    invoke-interface {v0, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method private final setStillMode(Z)V
    .locals 2

    .line 272
    const-string/jumbo v0, "stillMode"

    if-eqz p1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method private final setThumbnailTicket(Ljava/lang/String;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "thumbnailTicket"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setUploadStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->update(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1187
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateMessageSprite()V

    :cond_0
    return-void
.end method

.method static synthetic setUploadStatus$default(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1185
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUnit;->setUploadStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    return-void
.end method

.method private final setVideoTicket(Ljava/lang/String;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dataTicket"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showPlayer()V
    .locals 4

    .line 968
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_3

    .line 969
    invoke-interface {v0}, Lcom/metamoji/un/video/IUnMoviePlayer;->show()V

    return-void

    .line 971
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoSource()Lcom/metamoji/un/video/UnVideoSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 973
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getVideoUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnitManager;->getPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/metamoji/video/IAmvSource;

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnit;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    invoke-virtual {v1, p0, v2, v3}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getPlayer(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Lcom/metamoji/un/video/IWvvChairmansDirection;)Lcom/metamoji/un/video/IUnMoviePlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 975
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getPlayerRectOnScroller()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/metamoji/un/video/IUnMoviePlayer;->adjustPosition(Landroid/graphics/RectF;)V

    .line 976
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isReadOnly()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/metamoji/un/video/IUnMoviePlayer;->setReadOnly(Z)V

    .line 977
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isMuted()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/metamoji/un/video/IUnMoviePlayer;->setMuted(Z)V

    .line 978
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->markerManager:Lcom/metamoji/un/video/UnVideoMarkerManager;

    invoke-virtual {v2}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getMarkersForView()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/metamoji/un/video/IUnMoviePlayer;->setMarkers(Ljava/util/Collection;)V

    .line 979
    iput-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    .line 981
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoSource;->release()V

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-nez v0, :cond_3

    .line 984
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayer()V

    :cond_3
    return-void
.end method

.method private final unregisterCollaboHandler()V
    .locals 2

    .line 758
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/metamoji/ns/direction/INsDirectionHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    return-void
.end method

.method private final updateButtonSprite()V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_buttonSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_1

    .line 621
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 622
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    .line 625
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v2

    div-float/2addr v1, v2

    .line 626
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 627
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 628
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v2

    .line 629
    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v3

    .line 630
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 631
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    mul-float/2addr v2, v1

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    const/4 v1, 0x1

    .line 632
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method private final updateMessageSprite()V
    .locals 12

    .line 651
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_messageSprite:Lcom/metamoji/df/sprite/Sprite;

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 653
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isCloudAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnit;->uploadProgress:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-virtual {v3}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v3

    sget-object v5, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne v3, v5, :cond_2

    move v2, v4

    .line 658
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    .line 659
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    const/high16 v5, 0x41000000    # 8.0f

    .line 661
    invoke-virtual {v3, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    if-eqz v2, :cond_3

    .line 662
    sget-object v6, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-static {v6}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->access$getPAINT_LINK(Lcom/metamoji/un/video/UnVideoUnit$Companion;)Lcom/metamoji/df/sprite/PaintSolid;

    move-result-object v6

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    :goto_0
    check-cast v6, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v6}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/high16 v6, 0x3f000000    # 0.5f

    .line 663
    invoke-virtual {v3, v6}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 664
    sget-object v6, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    check-cast v6, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v6}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    const v7, 0x3d4ccccd    # 0.05f

    goto :goto_1

    :cond_4
    move v7, v6

    .line 665
    :goto_1
    invoke-virtual {v3, v7}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 666
    invoke-virtual {v3, v1}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 668
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    add-float/2addr v8, v5

    .line 669
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v9, 0x40800000    # 4.0f

    add-float/2addr v5, v9

    .line 670
    invoke-virtual {v3, v6, v6, v8, v5}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    const/high16 v6, 0x40000000    # 2.0f

    .line 671
    invoke-virtual {v3, v9, v6, v1}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    const/4 v1, 0x2

    if-eqz v2, :cond_5

    .line 674
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v2, v10

    .line 675
    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 676
    sget-object v10, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-static {v10}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->access$getPAINT_LINK(Lcom/metamoji/un/video/UnVideoUnit$Companion;)Lcom/metamoji/df/sprite/PaintSolid;

    move-result-object v10

    check-cast v10, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v10}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 677
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v10

    add-float/2addr v10, v6

    int-to-float v11, v1

    div-float/2addr v2, v11

    sub-float/2addr v10, v2

    invoke-virtual {v3, v9, v10}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 678
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v10

    add-float/2addr v10, v9

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    add-float/2addr v7, v6

    sub-float/2addr v7, v2

    invoke-virtual {v3, v10, v7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 679
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 682
    :cond_5
    invoke-virtual {v0, v8}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 683
    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 685
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v2

    .line 686
    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v3

    int-to-float v1, v1

    div-float v6, v2, v1

    cmpl-float v7, v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v7, :cond_6

    div-float/2addr v6, v8

    goto :goto_2

    :cond_6
    move v6, v9

    :goto_2
    div-float v1, v3, v1

    cmpl-float v7, v5, v1

    if-lez v7, :cond_7

    div-float v9, v1, v5

    .line 695
    :cond_7
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 696
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 697
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    mul-float/2addr v8, v1

    sub-float/2addr v2, v8

    .line 698
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    .line 699
    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 700
    invoke-virtual {v0, v4}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void

    .line 654
    :cond_8
    :goto_3
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void
.end method

.method private final updatePlayAndForbiddenSprite()V
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isStillMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateButtonSprite()V

    .line 514
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updateMessageSprite()V

    :cond_0
    return-void
.end method

.method private final updateSprite()V
    .locals 10

    .line 556
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v1

    .line 559
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 563
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 564
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_4
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_6

    .line 568
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getThumbnailBlob()Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 570
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    const/4 v1, 0x0

    .line 571
    invoke-static {v2, v1, v1, v0}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 572
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getWidth()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getHeight()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    goto :goto_1

    :cond_5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 576
    invoke-virtual {v4, v2}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 577
    new-instance v5, Lcom/metamoji/df/sprite/PaintSolid;

    const v6, -0x333334

    invoke-direct {v5, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v5, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 578
    invoke-virtual {v4, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v3, v2, v3

    sub-float/2addr v0, v2

    sub-float/2addr v1, v2

    .line 579
    invoke-virtual {v4, v3, v3, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 583
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updatePlayAndForbiddenSprite()V

    return-void
.end method

.method public static final visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    return-void
.end method

.method public static final visitModelForVideoFileManager(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->visitModelForVideoFileManager(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void
.end method


# virtual methods
.method public final adjustPlayerPosition()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_0

    .line 954
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getPlayerRectOnScroller()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/video/IUnMoviePlayer;->adjustPosition(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->unregisterCollaboHandler()V

    .line 503
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public final getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 2

    .line 768
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUnitId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMMoviePlayer()Lcom/metamoji/un/video/IUnMoviePlayer;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    return-object v0
.end method

.method public final getManipulationListener()Lcom/metamoji/df/sprite/ViewportListener;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->manipulationListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/ViewportListener;

    return-object v0
.end method

.method public final getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->markerManager:Lcom/metamoji/un/video/UnVideoMarkerManager;

    return-object v0
.end method

.method public final getPlayToInStillMode()D
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "playTo"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStartFromInStillMode()D
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "startFrom"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbnailTime$app()D
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "thumbnailTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoTicket()Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dataTicket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 772
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    if-eqz p1, :cond_1

    .line 775
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 776
    invoke-direct {p0, v1, p2}, Lcom/metamoji/un/video/UnVideoUnit;->handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 780
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    if-eqz p3, :cond_0

    .line 781
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    throw p1

    .line 780
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    if-eqz p3, :cond_2

    .line 781
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final handleTap(Landroid/graphics/PointF;)V
    .locals 4

    const-string v0, "posGlobal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1011
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1016
    iget p1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_1

    iget p1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getWidth()F

    move-result v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getHeight()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    .line 1018
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayer()V

    return-void

    .line 1024
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v1, v3, :cond_4

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayable()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1027
    :cond_3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1029
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1030
    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnitManager;->getPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1032
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnit;->playOrUpload(Landroid/graphics/PointF;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final hidePlayer()V
    .locals 1

    .line 990
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    .line 994
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayerCore()V

    return-void
.end method

.method public ignoreFocusRestrictionsByOthers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 384
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 385
    new-instance v1, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 402
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v0

    .line 403
    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 404
    sget-object v2, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v2}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->needsToUpload(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getStatusByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v3, v4}, Lcom/metamoji/un/video/UnVideoUnit;->setUploadStatus$default(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;ILjava/lang/Object;)V

    .line 406
    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploader;->getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/video/UnVideoUnit$init$2;

    invoke-direct {v3, p0}, Lcom/metamoji/un/video/UnVideoUnit$init$2;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->addListener(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->handleVideoUploadStateChanged:Ljava/lang/String;

    .line 407
    sget-object v2, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v2}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/VfVideoFileManager;->getSettingInfo()Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/media/video/VfSettingInfo;->checkAutoUpload(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->start(Ljava/lang/String;)Z

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->registerCollaboHandler()V

    .line 417
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isRestored()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 418
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnit;->setOnCurrentPage(Z)V

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->isCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->enlistVideoUnit(Lcom/metamoji/un/video/UnVideoUnit;)V

    :cond_2
    return-void
.end method

.method public final isMuted()Z
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "isMuted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isStillMode()Z
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "stillMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public killFocus(Z)V
    .locals 0

    .line 914
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->killFocus(Z)V

    .line 915
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayerCore()V

    return-void
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 4

    .line 519
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    .line 521
    instance-of v0, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/metamoji/nt/NtCurrentLayerChanged;

    if-eqz p1, :cond_2

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->updatePlayAndForbiddenSprite()V

    .line 526
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz p1, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v2

    .line 530
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/metamoji/un/video/UnVideoUnit;->isPlayableMode(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayer()V

    return v1

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isReadOnly()Z

    move-result v0

    .line 536
    invoke-interface {p1}, Lcom/metamoji/un/video/IUnMoviePlayer;->isReadOnly()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 537
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, v0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/un/video/IUnMoviePlayer;Z)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_2

    .line 546
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    :cond_2
    return v1
.end method

.method public noResizingX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public noResizingY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public noRotating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPlayerRestoredByAndroid()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isReadOnly()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/video/IUnMoviePlayer;->setReadOnly(Z)V

    .line 961
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->isMuted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/video/IUnMoviePlayer;->setMuted(Z)V

    .line 962
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->markerManager:Lcom/metamoji/un/video/UnVideoMarkerManager;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getMarkersForView()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/video/IUnMoviePlayer;->setMarkers(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    const-string p1, "model"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    sget-object p1, Lcom/metamoji/un/video/operation/UnVideoOperation;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;

    invoke-virtual {p1, p2, p0}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;->operationFromUndoModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/operation/UnVideoOperation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 736
    invoke-virtual {p1, p2, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation;->performWithEditContext(Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 738
    :cond_0
    sget-object p1, Lcom/metamoji/un/video/UnVideoUnit;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string p2, "failed to restore operation from undo model"

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploader;->getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnit;->handleVideoUploadStateChanged:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->removeListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 491
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->delistVideoUnit(Lcom/metamoji/un/video/UnVideoUnit;)V

    .line 492
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public final refreshSpriteGeometry()V
    .locals 1

    .line 440
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    return-void
.end method

.method public final refreshThumbnail()V
    .locals 2

    .line 447
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestForEditMode()Z
    .locals 1

    .line 919
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 2

    .line 861
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V

    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusOption;->isTapPosAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusOption;->getTapPos()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 864
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnit;->playOrUpload(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    :cond_1
    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 1

    const-string v0, "props"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    new-instance p3, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/df/controller/GeometricProps;)V

    const/4 p1, 0x0

    .line 714
    invoke-virtual {p3, p2, p1}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->performWithEditContext(Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void
.end method

.method public final setMMoviePlayer(Lcom/metamoji/un/video/IUnMoviePlayer;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    return-void
.end method

.method public final setMuted(Z)V
    .locals 2

    .line 239
    const-string v0, "isMuted"

    if-eqz p1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit;->mMoviePlayer:Lcom/metamoji/un/video/IUnMoviePlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/metamoji/un/video/IUnMoviePlayer;->setMuted(Z)V

    :cond_1
    return-void
.end method

.method protected setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 1

    const-string v0, "props"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 428
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit;->m_posterSprite:Lcom/metamoji/df/sprite/Sprite;

    if-nez p1, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/video/UnVideoUnit;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final uploadVideoFile()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUnit;->getVideoTicket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->movieUpload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
