.class public Lio/github/toyota32k/media/lib/surface/NdkInputSurface;
.super Ljava/lang/Object;
.source "NdkInputSurface.java"

# interfaces
.implements Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "io.github.toyota32k.media.lib.surface.NdkInputSurface"


# instance fields
.field private mEGLConfig:J

.field private mEGLContext:J

.field private mEGLDisplay:J

.field private mEGLSurface:J

.field private mHeight:I

.field private mNativeWindow:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 8

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mNativeWindow:J

    .line 41
    invoke-static {}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglGetDisplay()J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 45
    invoke-static {p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglChooseConfig(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLConfig:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 49
    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    invoke-static {v2, v3, p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglCreateContext(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLContext:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 53
    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v4, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLConfig:J

    iget-wide v6, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mNativeWindow:J

    invoke-static/range {v2 .. v7}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->createEGLSurface(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    invoke-static {v0, v1, p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglGetWidth(JJ)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mWidth:I

    .line 58
    iget-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    invoke-static {p1, p2, v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglGetHeight(JJ)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mHeight:I

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native createEGLSurface(JJJ)J
.end method

.method private static native eglChooseConfig(J)J
.end method

.method private static native eglCreateContext(JJ)J
.end method

.method private static native eglDestroySurface(JJ)Z
.end method

.method private static native eglGetDisplay()J
.end method

.method private static native eglGetHeight(JJ)I
.end method

.method private static native eglGetWidth(JJ)I
.end method

.method private static native eglMakeCurrent(JJJ)Z
.end method

.method private static native eglPresentationTimeANDROID(JJJ)Z
.end method

.method private static native eglSwapBuffers(JJ)Z
.end method

.method private static native nativeRelease(JJJJ)V
.end method

.method private releaseEGLSurface()V
    .locals 6

    .line 93
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 94
    iget-wide v4, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    invoke-static {v0, v1, v4, v5}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglDestroySurface(JJ)Z

    .line 95
    iput-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaCodec;)V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configure(Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;)V
    .locals 2

    .line 80
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mNativeWindow:J

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->setInputSurface(J)V

    return-void
.end method

.method public makeCurrent()V
    .locals 6

    .line 62
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    iget-wide v4, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLContext:J

    invoke-static/range {v0 .. v5}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglMakeCurrent(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 8

    .line 100
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    iget-wide v4, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLContext:J

    iget-wide v6, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mNativeWindow:J

    invoke-static/range {v0 .. v7}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->nativeRelease(JJJJ)V

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    .line 102
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLContext:J

    .line 103
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    .line 104
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mNativeWindow:J

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 6

    .line 72
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglPresentationTimeANDROID(JJJ)Z

    return-void
.end method

.method public swapBuffers()Z
    .locals 4

    .line 68
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    invoke-static {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglSwapBuffers(JJ)Z

    move-result v0

    return v0
.end method

.method public updateSize(II)V
    .locals 6

    .line 84
    iget v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mWidth:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mHeight:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 85
    :cond_1
    :goto_0
    sget-object p1, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->TAG:Ljava/lang/String;

    const-string p2, "re-create EGLSurface"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->releaseEGLSurface()V

    .line 87
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLConfig:J

    iget-wide v4, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mNativeWindow:J

    invoke-static/range {v0 .. v5}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->createEGLSurface(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    .line 88
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    invoke-static {v0, v1, p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglGetWidth(JJ)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mWidth:I

    .line 89
    iget-wide p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLDisplay:J

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mEGLSurface:J

    invoke-static {p1, p2, v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->eglGetHeight(JJ)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;->mHeight:I

    return-void
.end method
