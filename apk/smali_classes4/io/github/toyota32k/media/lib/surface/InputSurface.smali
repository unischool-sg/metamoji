.class public Lio/github/toyota32k/media/lib/surface/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"

# interfaces
.implements Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputSurface"


# instance fields
.field private mConfigs:[Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mHeight:I

.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;-><init>(Landroid/view/Surface;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Z)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 38
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Landroid/opengl/EGLConfig;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mConfigs:[Landroid/opengl/EGLConfig;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iput-object p1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    .line 53
    iput-boolean p2, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mReleaseSurface:Z

    .line 54
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->eglSetup()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 210
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": EGL error: 0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static clearSurface(Landroid/view/Surface;)V
    .locals 2

    .line 235
    new-instance v0, Lio/github/toyota32k/media/lib/surface/InputSurface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/toyota32k/media/lib/surface/InputSurface;-><init>(Landroid/view/Surface;Z)V

    .line 236
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->makeCurrent()V

    const/4 p0, 0x0

    .line 237
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4000

    .line 238
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 239
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->swapBuffers()Z

    .line 240
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->release()V

    return-void
.end method

.method private createEGLSurface()V
    .locals 5

    const/16 v0, 0x3038

    .line 118
    filled-new-array {v0}, [I

    move-result-object v0

    .line 121
    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mConfigs:[Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v1, v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 123
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private eglSetup()V
    .locals 13

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 67
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_3

    const/4 v1, 0x2

    .line 70
    new-array v2, v1, [I

    .line 71
    iget-object v3, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xb

    .line 77
    new-array v6, v2, [I

    fill-array-data v6, :array_0

    .line 85
    new-array v11, v4, [I

    .line 86
    iget-object v5, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v8, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mConfigs:[Landroid/opengl/EGLConfig;

    array-length v10, v8

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3098

    const/16 v3, 0x3038

    .line 91
    filled-new-array {v2, v1, v3}, [I

    move-result-object v1

    .line 95
    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mConfigs:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v0

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 97
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->createEGLSurface()V

    .line 103
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->getWidth()I

    move-result v0

    iput v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mWidth:I

    .line 104
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->getHeight()I

    move-result v0

    iput v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mHeight:I

    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private releaseEGLSurface()V
    .locals 2

    .line 129
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 131
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaCodec;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public configure(Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public getHeight()I
    .locals 5

    const/4 v0, 0x1

    .line 194
    new-array v0, v0, [I

    .line 195
    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3056

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 196
    aget v0, v0, v4

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 180
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    const/4 v0, 0x1

    .line 186
    new-array v0, v0, [I

    .line 187
    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3057

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 188
    aget v0, v0, v4

    return v0
.end method

.method public makeCurrent()V
    .locals 3

    .line 159
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeUnCurrent()V
    .locals 4

    .line 164
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 140
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 142
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 143
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 144
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 146
    :cond_0
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mReleaseSurface:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 149
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 150
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 151
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 203
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method public updateSize(II)V
    .locals 1

    .line 108
    iget v0, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mWidth:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mHeight:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 109
    :cond_1
    :goto_0
    const-string p1, "InputSurface"

    const-string p2, "re-create EGLSurface"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->releaseEGLSurface()V

    .line 111
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->createEGLSurface()V

    .line 112
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->getWidth()I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mWidth:I

    .line 113
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->getHeight()I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/surface/InputSurface;->mHeight:I

    return-void
.end method
